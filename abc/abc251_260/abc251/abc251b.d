import std;

void main() {
    long N, W;
    readf("%d %d\n", N, W);

    auto A = readln.chomp.split.to!(long[]);

    auto list = new bool[](W+1);
    foreach (i; 0 .. N) {
        if (A[i] <= W) list[A[i]] = true;

        foreach (j; 0 .. N) {
            if (i == j) continue;
            if (A[i] + A[j] <= W) list[A[i]+A[j]] = true;

            foreach (k; 0 .. N) {
                if (i == k || j == k) continue;

                if (A[i] + A[j] + A[k] <= W) list[A[i]+A[j]+A[k]] = true;
            }
        }
    }

    long res = list.count(true);
    res.writeln;
}