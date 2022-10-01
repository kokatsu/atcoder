import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto L = new int[][](N);
    foreach (i; 0 .. N) L[i] = readln.chomp.split.to!(int[]);

    foreach (_; 0 .. Q) {
        int s, t;
        readf("%d %d\n", s, t);

        int res = L[s-1][t];
        res.writeln;
    }
}