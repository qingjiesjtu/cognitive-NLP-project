/*
	Original dialogue:
	==================
Son: Oh! It's raining heavily! But I have to go to school because I "probably" have an exam today.
Mom: Yes, but you really need to be careful on the way. I "really don't" (chances_are_slight) want see you slipping. You'd
   better put on your rain boots.
Son: The rain boots are not in good quality. I "don't" (unlikely) want my feet in wet.
Mom: How about taking a taxi?
Son: I "don't" (unlikely) want it to be expensive to get to school.
Mom: Ok, let your dad drive you there!

*/


	/*------------------------------------------------*/
	/* Domain knowledge starts here                   */
	/*------------------------------------------------*/

	/* pay attention to the fact that the following
	   lines are not Prolog clauses, but will be interpreted
	   by the program. 
	   The only Prolog predicates are:
	   - initial_situation
	   - action
	   - default
	   - preference
	   - incompatible
	   -  <===	(physical effects)
	   -  <---	(results of actions)-	(not used)
	 */ 

	% initial facts
	initial_situation(storm).
	initial_situation(-attend_exam).
    initial_situation(-go_to_school).
    % initial_situation(-put_on_rain_boots).
    % initial_situation(-take_taxi).
    % initial_situation(on_foot).

	% actions
	action(put_on_rain_boots).
	action(take_taxi).
    action(on_foot).
    action(dad_drives).
	
	% default predicates: these predicates are true unless proven false
	% defaults values (not used here) may represent the strength, or typicality, of the default

	% causal clauses
	attend_exam <=== go_to_school.
    go_to_school <=== on_foot.
    go_to_school <=== put_on_rain_boots.
    go_to_school <=== take_taxi.
    go_to_school <=== dad_drives.
    slip <=== storm + go_to_school + on_foot.
    wet_feet <=== storm + put_on_rain_boots.
    expensive <=== take_taxi.

	% physical consequences


	% preferences (positive predicates only)
	% preference(attend_exam, 30). 
	% preference(slip, -40). 
    % preference(wet_feet, -35). % need to be bigger than the necessity of exam to find an alternative solution
    % preference(expensive, -35).
