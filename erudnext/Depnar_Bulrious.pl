sub EVENT_SAY { 
	if($text=~/hail/i){
		quest::say("Hail. $name! I am the master of the paladins among the Peacekeepers. Have you joined the harmony of the Peacekeepers or are you merely a visitor?"); 
	}
	if($text=~/joined/i){
		quest::say("Then go and speak with the other Peacekeepers. Do your part to promote the words of Quellious."); 
	}
}

sub EVENT_ITEM { 
	if(plugin::check_handin(\%itemcount, 18726 => 1) ){ # Tattered Note
		quest::say("Welcome to the Temple of Divine Light. I am Master Bulrious. Here. we study and spread the will of Quellious. Here is your guild tunic. Go find Jras Solsier. he will get you started with your first lesson.");
		quest::summonitem(13546); # Faded Silver Tunic*
		quest::ding();
		quest::faction(247,10); # Peace Keepers
		quest::faction( 145,10); 	# High Council of Erudin
		quest::faction( 143,-15); # Heretics
		quest::exp(100);
	}
	#do all other handins first with plugin, then let it do disciplines
	plugin::try_tome_handins(\%itemcount, $class, 'Paladin');
	plugin::return_items(\%itemcount);
}

#END of FILE Zone:erudnext  ID:98062 -- Depnar_Bulrious