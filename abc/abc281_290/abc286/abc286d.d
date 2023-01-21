import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto list = new bool[](X+1);
    list[0] = true;
    foreach (_; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        foreach_reverse (i, l; list) {
            if (!l) continue;

            int rem = B;
            foreach (j; iota(i+A, X+1, A)) {
                if (rem <= 0) break;
                list[j] = true;
                --rem;
            }
        }
    }

    writeln(list[X] ? "Yes" : "No");
}