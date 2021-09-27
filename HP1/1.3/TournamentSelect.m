function selectedIndividualIndex = TournamentSelect(fitnessList, tournamentProbability, tournamentSize);
    
    % SELECT RANDOM PARTICIPANTS
    % Currently the same participant can be chosen several times, should
    % perhaps be fixed
    participants = zeros(1, tournamentSize); % Note: it is indicises
    for i = 1:tournamentSize
        iParticipant = 1 + fix(rand*size(fitnessList, 2));
        participants(i) = iParticipant;
    end 
    
    % The tournament
    while true
        
        % if only 1 participant, they are the winner
        if size(participants, 2) == 1
            selectedIndividualIndex = participants(1);
            return
        end
        
        % Find best participant index
        bestFitness = -inf;
        iBestParticipant = 0;
        for i = 1:size(participants, 2)
            if fitnessList(participants(i)) > bestFitness
                bestFitness = fitnessList(participants(i));
                iBestParticipant = i;
            end 
        end
        % Select or remove the best participant
        r = rand;
        if r < tournamentProbability
            % Select best participant
            selectedIndividualIndex = participants(iBestParticipant);
           return 
        else 
            %remove best participant
            participants = [participants(1:(iBestParticipant -1)) participants((iBestParticipant + 1):end)];
        end     
    end   
end 
