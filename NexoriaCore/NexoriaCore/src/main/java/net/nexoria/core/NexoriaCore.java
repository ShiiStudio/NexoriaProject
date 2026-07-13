package net.nexoria.core;

import org.bukkit.plugin.java.JavaPlugin;

public final class NexoriaCore extends JavaPlugin {

    private DailyQuestManager dailyQuestManager;
    private QuestBossBarManager questBossBarManager;
    private RealTimeScoreManager realTimeScoreManager;

    @Override
    public void onEnable() {
        getCommand("pay").setExecutor(new PayCommand());
        getCommand("death").setExecutor(new DeathCommand());

        dailyQuestManager = new DailyQuestManager(this);
        questBossBarManager = new QuestBossBarManager(this);
        realTimeScoreManager = new RealTimeScoreManager(this);

        getLogger().info("NexoriaCore Enabled!");
    }

    @Override
    public void onDisable() {
        if (questBossBarManager != null) {
            questBossBarManager.shutdown();
        }

        getLogger().info("NexoriaCore Disabled!");
    }
}
