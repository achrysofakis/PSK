function [est_X, est_bit_seq] = detect_PSK_16(Y)
    % Αρχικοποίηση συμβόλων 16-PSK
    symbols = exp(1i*(0:15)*pi/8);
    
    % Προετοιμασία αποθήκευσης των εκτιμήσεων
    est_X = zeros(size(Y));
    est_bit_seq = zeros(size(Y, 1), 4);
    
    % Εύρεση του πλησιέστερου συμβόλου για κάθε δείγμα Y
    for i = 1:size(Y, 1)
        [~, index] = min(abs(Y(i) - symbols));
        est_X(i) = symbols(index);
        
        % Αντίστροφη απεικόνιση Gray
        est_bit_seq(i, :) = de2bi(index-1, 4, 'left-msb');
    end
end
