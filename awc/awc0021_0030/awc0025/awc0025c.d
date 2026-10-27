import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    long[] D = readln.chomp.split.to!(long[]);

    D.sort!"a > b";

    long res = M >= N ? 0 : D[M];
    res.writeln;
}
