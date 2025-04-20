import std;

void main() {
    int N, P, Q;
    readf("%d %d %d\n", N, P, Q);

    auto D = readln.chomp.split.to!(int[]);

    int res = min(P, Q + D.minElement);
    res.writeln;
}
