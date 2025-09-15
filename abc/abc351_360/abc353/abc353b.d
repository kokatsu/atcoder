import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int[] A = readln.chomp.split.to!(int[]);

    int res = 1, rem;
    foreach (a; A) {
        if (rem + a <= K) {
            rem += a;
            continue;
        }

        ++res, rem = a;
    }

    res.writeln;
}
