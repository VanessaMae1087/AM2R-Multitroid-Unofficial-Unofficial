var msg = "Game end debugging print (hi krag!)";
msg += "#gameEnding: " + string(global.gameEnding);
msg += "#gameEndTimer: " + string(oControl.gameEndTimer);
msg += "#winningTeam: " + string(global.winningTeam);
msg += "#endingGametime: " + string(global.endingGametime);
msg += "#endingItemstaken: " + string(global.endingItemstaken);
msg += "#in the interest of not breaking things, you still have to restart your game, sorry :(";

show_message_async(msg);
