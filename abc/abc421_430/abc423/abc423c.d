import std;

void main() {
    int N, R;
    readfln("%d %d", N, R);

    int[] L = readln.chomp.split.to!(int[]);

    int[] C = N.iota.filter!(i => L[i] == 0).array;
    auto E = C.empty ? [N, 0] : C.extrema;

    int[] X = iota(E[0], R).filter!(i => L[i] == 1).array;
    int[] Y = iota(R, E[1]).filter!(i => L[i] == 1).array;

    size_t res = C.length + (X.length + Y.length) * 2;
    res.writeln;
}
