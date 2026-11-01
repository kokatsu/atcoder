import std;

void main() {
    int N, S, T;
    readfln("%d %d %d", N, S, T);

    int[] A = readln.chomp.split.to!(int[]);

    auto res = A.count!(a => abs(a - S) <= T);
    res.writeln;
}
