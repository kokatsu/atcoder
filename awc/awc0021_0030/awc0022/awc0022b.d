import std;

void main() {
    int N, M, T;
    readfln("%d %d %d", N, M, T);

    int[] A = readln.chomp.split.to!(int[]);

    int S = A.map!(a => max(0, T - a)).sum;

    int res = S <= M ? S : -1;
    res.writeln;
}
