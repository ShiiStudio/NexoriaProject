package net.nexoria.core;

import org.bukkit.plugin.java.JavaPlugin;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Properties;

public class DailyQuestManager {

    private final JavaPlugin plugin;
    private final File dataFile;
    private final Properties data = new Properties();

    public DailyQuestManager(JavaPlugin plugin) {
        this.plugin = plugin;
        this.dataFile = new File(plugin.getDataFolder(), "dailyquest.properties");

        load();
        checkDaily();

        // 5秒ごとに日付チェック
        plugin.getServer().getScheduler().runTaskTimer(
                plugin,
                this::checkDaily,
                20L * 5,
                20L * 5
        );
    }

    private void load() {
        if (!plugin.getDataFolder().exists()) {
            plugin.getDataFolder().mkdirs();
        }

        if (!dataFile.exists()) {
            save();
            return;
        }

        try (FileInputStream in = new FileInputStream(dataFile)) {
            data.clear();
            data.load(in);
        } catch (IOException e) {
            plugin.getLogger().warning("dailyquest.properties の読み込みに失敗しました。");
            e.printStackTrace();
        }
    }

    private void save() {
        try (FileOutputStream out = new FileOutputStream(dataFile)) {
            data.store(out, "Nexoria Daily Quest");
        } catch (IOException e) {
            plugin.getLogger().warning("dailyquest.properties の保存に失敗しました。");
            e.printStackTrace();
        }
    }

    private void checkDaily() {

        // 毎回ファイルを読み直す
        load();

        String today = LocalDate.now(ZoneId.of("Asia/Tokyo")).toString();
        String lastDay = data.getProperty("last_day", "");

        if (today.equals(lastDay)) {
            return;
        }

        plugin.getLogger().info("Daily Quest Reset");

        // メインスレッドでfunction実行
        plugin.getServer().getScheduler().runTask(plugin, () -> {
            plugin.getServer().dispatchCommand(
                    plugin.getServer().getConsoleSender(),
                    "function system:quest/daily_random"
            );
        });

        data.setProperty("last_day", today);
        save();

        plugin.getServer().broadcastMessage("§6━━━━━━━━━━━━━━━━━━━━");
        plugin.getServer().broadcastMessage("§e📜 デイリークエストが更新されました！");
        plugin.getServer().broadcastMessage("§6━━━━━━━━━━━━━━━━━━━━");
    }
}