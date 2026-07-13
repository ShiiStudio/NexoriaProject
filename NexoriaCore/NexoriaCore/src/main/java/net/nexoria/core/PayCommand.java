package net.nexoria.core;

import org.bukkit.Bukkit;
import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandExecutor;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;
import org.bukkit.scoreboard.Objective;
import org.bukkit.scoreboard.Scoreboard;

public final class PayCommand implements CommandExecutor {

    private static final String GOLD_OBJECTIVE = "Gold";

    @Override
    public boolean onCommand(CommandSender sender, Command command, String label, String[] args) {
        if (!(sender instanceof Player senderPlayer)) {
            sender.sendMessage("このコマンドはプレイヤーのみ使用できます。");
            return true;
        }

        if (args.length != 2) {
            senderPlayer.sendMessage(ChatColor.RED + "使い方: /pay <player> <amount>");
            return true;
        }

        Player target = Bukkit.getPlayerExact(args[0]);
        if (target == null) {
            senderPlayer.sendMessage(ChatColor.RED + "そのプレイヤーはオンラインではありません。");
            return true;
        }

        if (target.getUniqueId().equals(senderPlayer.getUniqueId())) {
            senderPlayer.sendMessage(ChatColor.RED + "自分には送金できません。");
            return true;
        }

        int amount;
        try {
            amount = Integer.parseInt(args[1]);
        } catch (NumberFormatException e) {
            senderPlayer.sendMessage(ChatColor.RED + "金額は数字で入力してください。");
            return true;
        }

        if (amount <= 0) {
            senderPlayer.sendMessage(ChatColor.RED + "1以上の金額を入力してください。");
            return true;
        }

        Scoreboard scoreboard = Bukkit.getScoreboardManager().getMainScoreboard();
        Objective gold = scoreboard.getObjective(GOLD_OBJECTIVE);

        if (gold == null) {
            senderPlayer.sendMessage(ChatColor.RED + "Goldスコアボードが存在しません。");
            return true;
        }

        int senderGold = gold.getScore(senderPlayer.getName()).getScore();

        if (senderGold < amount) {
            senderPlayer.sendMessage(ChatColor.RED + "Goldが足りません。");
            return true;
        }

        gold.getScore(senderPlayer.getName()).setScore(senderGold - amount);
        gold.getScore(target.getName()).setScore(gold.getScore(target.getName()).getScore() + amount);

        senderPlayer.sendMessage(ChatColor.GOLD + target.getName() + " に " + amount + " Gold を送金しました。");
        target.sendMessage(ChatColor.GOLD + senderPlayer.getName() + " から " + amount + " Gold を受け取りました。");

        return true;
    }
}