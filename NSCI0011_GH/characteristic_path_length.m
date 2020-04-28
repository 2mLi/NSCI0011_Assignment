function result = characteristic_path_length(G)
    % this function returns "characteristic" path length! instead of apl
    % similar steps but different ways to calculate mean
    d = distances ( G );
    n = length ( d );
    % Set diagonal elements to NaN
    d (1: n +1: end ) = NaN ;
    % Set infinite elements to NaN
    d ( isinf ( d )) = NaN ;
    % Get non - NaN elements
    d = d (~ isnan ( d ));
    % and average over N(N-1)...
    N = G.numnodes; 
    result = sum(d)/(N*(N-1)); 
end