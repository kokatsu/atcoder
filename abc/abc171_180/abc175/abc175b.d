import std;

void main() {
    int N;
    readf("%d\n", N);

    auto L = readln.chomp.split.to!(int[]);

    int res;
    foreach (i; 0 .. N - 2) {
        foreach (j; i + 1 .. N - 1) {
            if (L[i] == L[j])
                continue;

            foreach (k; j + 1 .. N) {
                if (L[i] == L[k] || L[j] == L[k])
                    continue;

                int[] edges = [L[i], L[j], L[k]];

                bool isOK = true;
                foreach (l; 0 .. 3) {
                    isOK &= (edges[l] < edges[(l + 1) % 3] + edges[(l + 2) % 3]);
                }

                if (isOK)
                    ++res;
            }
        }
    }

    res.writeln;
}
