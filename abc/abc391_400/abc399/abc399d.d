import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int N;
        readf("%d\n", N);

        auto A = readln.chomp.split.to!(int[]);

        A[] -= 1;

        auto L = new int[](N), R = new int[](N);
        L[] = -1;

        foreach (i, a; A) {
            if (L[a] == -1) {
                L[a] = i.to!int;
            }
            else {
                R[a] = i.to!int;
            }
        }

        bool[Tuple!(int, int)] set;
        foreach (i; 0 .. N * 2 - 1) {
            int a = A[i], b = A[i + 1];
            if (R[a] - L[a] == 1 || R[b] - L[b] == 1) {
                continue;
            }

            int[] V = [R[a], L[a], R[b], L[b]];
            V.sort;
            if (V[0] + 1 == V[1] && V[2] + 1 == V[3]) {
                if (a > b) {
                    swap(a, b);
                }
                set[tuple(a, b)] = true;
            }
        }

        auto res = set.length;
        res.writeln;
    }
}
