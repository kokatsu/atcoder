import std;

void main() {
    int N, T, P;
    readf("%d %d %d\n", N, T, P);

    int[] L = readln.chomp.split.to!(int[]);

    L.sort!"a > b";

    int res = max(0, T - L[P - 1]);
    res.writeln;
}
