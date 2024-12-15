import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int res = N;
    auto have = new bool[](N);
    foreach (_; 0 .. K) {
        int d;
        readf("%d\n", d);

        auto A = readln.chomp.split.to!(int[]);

        A[] -= 1;

        foreach (a; A) {
            if (!have[a]) {
                --res;
                have[a] = true;
            }
        }
    }

    res.writeln;
}
