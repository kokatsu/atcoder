import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long[long] assoc;
    assoc[A[0]] = 1;
    foreach (i; 1 .. N-1) {
        long[long] next;
        foreach (key, val; assoc) {
            long p = key + A[i];
            if (p.clamp(0, 20) == p) {
                next[p] += val;
            }

            long m = key - A[i];
            if (m.clamp(0, 20) == m) {
                next[m] += val;
            }
        }

        assoc = next;
    }

    long res = A[N-1] in assoc ? assoc[A[N-1]] : 0;
    res.writeln;
}