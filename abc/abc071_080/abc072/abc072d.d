import std;

void main() {
    int N;
    readf("%d\n", N);

    auto p = readln.chomp.split.to!(int[]);

    p[] -= 1;

    int res;
    foreach (i; 0 .. N) {
        if (p[i] != i) {
            continue;
        }

        ++res;

        if (i < N - 1) {
            p.swapAt(i, i+1);
        }
    }

    res.writeln;
}