import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto table = new bool[][](N, M);
    foreach (i; 0 .. N) {
        auto A = readln.chomp.split.to!(int[]);

        foreach (a; A[1 .. $]) {
            table[i][a - 1] = true;
        }
    }

    int P, Q;
    readf("%d %d\n", P, Q);

    auto B = readln.chomp.split.to!(int[]);

    int res;
    foreach (i; 0 .. N) {
        if (B.filter!(b => table[i][b - 1]).array.length >= Q) {
            ++res;
        }
    }

    res.writeln;
}
