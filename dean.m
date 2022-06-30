function de = dean(d,n,w)
%   zwraca liczbę wartości własnych symetrycznej macierzy trójdiagonalnej mniejszych od zadanej liczby rzeczywistej
%  d() przekątna główna macierzy
%  e2() kwadraty wyrazów pozadiagonalnych, niezerowe
%  n rozmiar macierzy
%  w zadana liczba
    j = 0;
    u = d(1) - w;
    if u < 0
        j = 1;
    end
    for i = 2:n
    u = d(i) - w + 1 / u;
        if u < 0 
            j=j + 1;
        end
    end
    de = j;
end
