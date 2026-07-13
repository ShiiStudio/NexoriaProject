package net.nexoria.core;

import org.bukkit.Bukkit;
import org.bukkit.NamespacedKey;
import org.bukkit.boss.BarColor;
import org.bukkit.boss.BarStyle;
import org.bukkit.boss.KeyedBossBar;
import org.bukkit.entity.Player;
import org.bukkit.plugin.java.JavaPlugin;
import org.bukkit.scoreboard.Objective;
import org.bukkit.scoreboard.Scoreboard;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class QuestBossBarManager {

    private final JavaPlugin plugin;
    private final Map<UUID, KeyedBossBar> bars = new HashMap<>();

    public QuestBossBarManager(JavaPlugin plugin) {
        this.plugin = plugin;

        Bukkit.getScheduler().runTaskTimer(
                plugin,
                this::updateAll,
                20L,
                5L
        );
    }

    public void shutdown() {
        for (KeyedBossBar bar : bars.values()) {
            bar.removeAll();
            bar.setVisible(false);
        }

        bars.clear();
    }

    private void updateAll() {
        for (Player player : Bukkit.getOnlinePlayers()) {
            update(player);
        }
    }

    private void update(Player player) {
        int active = getScore(player, "q_active");
        int progress = getScore(player, "q_progress");
        int clear = getScore(player, "q_clear");

        if (active <= 0) {
            hide(player);
            return;
        }

        QuestInfo quest = getQuest(active);

        if (quest == null) {
            hide(player);
            return;
        }

        int max = Math.max(quest.max(), 1);
        progress = Math.max(0, Math.min(progress, max));

        KeyedBossBar bar = getOrCreateBar(player);

        bar.removeAll();
        bar.addPlayer(player);

        double percent = (double) progress / (double) max;
        percent = Math.max(0.0, Math.min(1.0, percent));

        bar.setProgress(percent);

        if (clear >= 1 || progress >= max) {
            bar.setColor(BarColor.GREEN);
            bar.setTitle("§a✔ " + quest.name() + " 完了！ §f[" + max + "/" + max + "]");
        } else {
            bar.setColor(getColor(percent));
            bar.setTitle("§6📜 " + quest.name() + " §f[" + progress + "/" + max + "]");
        }

        bar.setVisible(true);
    }

    private KeyedBossBar getOrCreateBar(Player player) {
        KeyedBossBar existing = bars.get(player.getUniqueId());

        if (existing != null) {
            return existing;
        }

        NamespacedKey key = new NamespacedKey(plugin, "quest_" + player.getUniqueId());

        KeyedBossBar bar = Bukkit.getBossBar(key);

        if (bar == null) {
            bar = Bukkit.createBossBar(key, "", BarColor.RED, BarStyle.SOLID);
        }

        bars.put(player.getUniqueId(), bar);
        return bar;
    }

    private void hide(Player player) {
        KeyedBossBar bar = bars.get(player.getUniqueId());

        if (bar == null) {
            NamespacedKey key = new NamespacedKey(plugin, "quest_" + player.getUniqueId());
            bar = Bukkit.getBossBar(key);
        }

        if (bar == null) {
            return;
        }

        bar.removeAll();
        bar.setVisible(false);
    }

    private int getScore(Player player, String objectiveName) {
        if (Bukkit.getScoreboardManager() == null) {
            return 0;
        }

        Scoreboard board = Bukkit.getScoreboardManager().getMainScoreboard();
        Objective objective = board.getObjective(objectiveName);

        if (objective == null) {
            return 0;
        }

        return objective.getScore(player.getName()).getScore();
    }

    private BarColor getColor(double percent) {
        if (percent >= 1.0) {
            return BarColor.GREEN;
        }

        if (percent >= 0.67) {
            return BarColor.YELLOW;
        }

        if (percent >= 0.34) {
            return BarColor.PINK;
        }

        return BarColor.RED;
    }

    private QuestInfo getQuest(int id) {
        return switch (id) {
            case 1 -> new QuestInfo("ゾンビ100体討伐", 100);
            case 2 -> new QuestInfo("ソードゾンビ80体討伐", 80);
            case 3 -> new QuestInfo("スケルトン80体討伐", 80);
            case 4 -> new QuestInfo("クモ80体討伐", 80);
            case 5 -> new QuestInfo("ドラウンド60体討伐", 60);
            case 6 -> new QuestInfo("ガーディアン40体討伐", 40);
            case 7 -> new QuestInfo("古鎧の隊長3体討伐", 3);
            case 8 -> new QuestInfo("深海の守護者2体討伐", 2);
            case 9 -> new QuestInfo("無属性150体討伐", 150);
            case 10 -> new QuestInfo("自然属性150体討伐", 150);
            case 11 -> new QuestInfo("氷属性100体討伐", 100);
            case 12 -> new QuestInfo("火属性100体討伐", 100);
            case 13 -> new QuestInfo("雷属性100体討伐", 100);
            case 14 -> new QuestInfo("敵300体討伐", 300);
            case 15 -> new QuestInfo("クモ洞窟1回クリア", 1);
            case 16 -> new QuestInfo("地下墓地1回クリア", 1);
            case 17 -> new QuestInfo("古代神殿1回クリア", 1);
            case 18 -> new QuestInfo("ダンジョン3回クリア", 3);
            case 19 -> new QuestInfo("オーク原木64個納品", 64);
            case 20 -> new QuestInfo("オーク樹皮16個納品", 16);
            case 21 -> new QuestInfo("トウヒ原木64個納品", 64);
            case 22 -> new QuestInfo("トウヒ樹皮16個納品", 16);
            case 23 -> new QuestInfo("低純度石炭32個納品", 32);
            case 24 -> new QuestInfo("高純度石炭8個納品", 8);
            case 25 -> new QuestInfo("低純度鉄鉱石32個納品", 32);
            case 26 -> new QuestInfo("高純度鉄鉱石8個納品", 8);
            case 27 -> new QuestInfo("古びた布32個納品", 32);
            case 28 -> new QuestInfo("骨片32個納品", 32);
            case 29 -> new QuestInfo("クモの糸32個納品", 32);
            case 30 -> new QuestInfo("濡れた布32個納品", 32);
            case 31 -> new QuestInfo("海晶32個納品", 32);
            case 32 -> new QuestInfo("腐食した骨16個納品", 16);
            case 33 -> new QuestInfo("錆びた鉄片16個納品", 16);
            case 34 -> new QuestInfo("丈夫な骨16個納品", 16);
            case 35 -> new QuestInfo("クモの牙16個納品", 16);
            case 36 -> new QuestInfo("海晶片16個納品", 16);
            case 37 -> new QuestInfo("深海の棘16個納品", 16);
            case 38 -> new QuestInfo("隊長の紋章8個納品", 8);
            case 39 -> new QuestInfo("守護者の海晶8個納品", 8);
            case 40 -> new QuestInfo("古代守護者の破片5個納品", 5);
            case 41 -> new QuestInfo("クラフト20回", 20);
            case 42 -> new QuestInfo("魔法100回使用", 100);
            default -> null;
        };
    }

    private record QuestInfo(String name, int max) {
    }
}