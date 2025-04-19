import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto D = new int[][](N);

    auto K = new int[](M);
    auto A = new int[][](M);
    foreach (i; 0 .. M) {
        auto line = readln.chomp.split.to!(int[]);
        K[i] = line[0];
        A[i] = line[1 .. $];

        A[i][] -= 1;

        foreach (a; A[i]) {
            D[a] ~= i;
        }
    }

    auto B = readln.chomp.split.to!(int[]);

    B[] -= 1;

    auto C = new int[](M);

    int res;
    foreach (b; B) {
        foreach (d; D[b]) {
            ++C[d];

            if (C[d] == K[d]) {
                ++res;
            }
        }

        res.writeln;
    }
}
