/*
identify words, by parsing indicating necessities
*/

/*
A1-Do you want to hang out tomorrow?
B1-I'm sorry but it's highly unlikely that I will be able to. What about the day after?
A2-Yeah, probably. But if we went on the weekend I would absolutely be free.
B2-Yes! I am free on the weekend as well. We can definetely meet up then.
*/


% initial facts
initial_situation(-meeting).

% actions
action(meet_tomorrow).
action(meet_after_tomorrow).
action(meet_weekend).

/*	
% default predicates: these predicates are true unless proven false
% defaults values (not used here) may represent the strength, or typicality, of the default
default(-soft_wood, _).	
default(-several_layers, _).
default(-wire_brush, _).	


% causal clauses
nice_surface <=== burn_off + -wood_wrecked.
% % % nice_surface <=== sanding + -several_layers + -wood_wrecked.
% % % nice_surface <=== filler_compound + -wood_wrecked.
nice_doors <=== repaint + nice_surface.

% physical consequences
tough_work <=== burn_off + mouldings + -wire_brush.
-nice_surface <=== wood_wrecked.
*/

preference(definitely, 40).
preference(absolutely, 35).
preference(certainly, 30).
preference(really, 25).
preference(highly_likely, 20).
preference(likely, 15).
preference(probably, 10).
preference(even, 0).
preference(probably_not, -10).
preference(doubt, -15).
preference(unlikely, -20).
preference(improbable, -25).
preference(chances_are_slight, -30).
preference(little_chance, -35).
preference(highly_unlikely, -40).
preference(almost_no_chance, -45).



