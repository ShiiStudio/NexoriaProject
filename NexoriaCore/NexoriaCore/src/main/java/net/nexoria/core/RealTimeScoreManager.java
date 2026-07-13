package net.nexoria.core;

import org.bukkit.Bukkit;
import org.bukkit.plugin.java.JavaPlugin;
import org.bukkit.scheduler.BukkitTask;
import org.bukkit.scoreboard.Criteria;
import org.bukkit.scoreboard.Objective;
import org.bukkit.scoreboard.Scoreboard;

import java.time.DayOfWeek;
import java.time.LocalDateTime;
import java.time.ZoneId;

public class RealTimeScoreManager {

    private final JavaPlugin plugin;
    private BukkitTask task;

    public RealTimeScoreManager(JavaPlugin plugin) {
        this.plugin = plugin;

        setupObjectives();

        task = plugin.getServer().getScheduler().runTaskTimer(
                plugin,
                () -> updateTimeScores(),
                20L,
                20L
        );

        plugin.getLogger().info("RealTimeScoreManager Enabled!");
    }

    public void shutdown() {
        if (task != null) {
            task.cancel();
            task = null;
        }
    }

    private void setupObjectives() {
        createObjective("real_year");
        createObjective("real_month");
        createObjective("real_day");
        createObjective("real_week");
        createObjective("real_hour");
        createObjective("real_minute");
        createObjective("real_second");
    }

    private void createObjective(String name) {
        if (Bukkit.getScoreboardManager() == null) {
            plugin.getLogger().warning("ScoreboardManager is null: " + name);
            return;
        }

        Scoreboard board = Bukkit.getScoreboardManager().getMainScoreboard();

        if (board.getObjective(name) == null) {
            board.registerNewObjective(name, Criteria.DUMMY, name);
        }
    }

    private void updateTimeScores() {
        if (Bukkit.getScoreboardManager() == null) {
            return;
        }

        LocalDateTime now = LocalDateTime.now(ZoneId.of("Asia/Tokyo"));
        Scoreboard board = Bukkit.getScoreboardManager().getMainScoreboard();

        setScore(board, "real_year", now.getYear());
        setScore(board, "real_month", now.getMonthValue());
        setScore(board, "real_day", now.getDayOfMonth());
        setScore(board, "real_hour", now.getHour());
        setScore(board, "real_minute", now.getMinute());
        setScore(board, "real_second", now.getSecond());

        DayOfWeek dayOfWeek = now.getDayOfWeek();
        setScore(board, "real_week", dayOfWeek.getValue());
    }

    private void setScore(Scoreboard board, String objectiveName, int value) {
        Objective objective = board.getObjective(objectiveName);

        if (objective == null) {
            plugin.getLogger().warning(objectiveName + " objective missing");
            return;
        }

        objective.getScore("#time").setScore(value);
    }
}