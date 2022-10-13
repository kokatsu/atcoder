import std;

void main() {
    long N;
    readf("%d\n", N);

    auto L = readln.chomp.split.to!(long[]);

    auto S = L.sort;

    long res;
    foreach (i; 0 .. N-2) {
        foreach (j; i+1 .. N-1) {
            auto lb = S.lowerBound(L[i]+L[j]);
            res += lb.length.to!long - j - 1;
        }
    }

    res.writeln;
}