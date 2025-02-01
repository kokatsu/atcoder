import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto pigeons = new int[](N + 1), nests = new int[](N + 1);
    pigeons = iota(N + 1).array;
    nests[] = 1;

    int res;
    foreach (i; 0 .. Q) {
        auto query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            int P = query[1], H = query[2];
            int R = pigeons[P];

            if (nests[R] == 2) {
                --res;
            }

            if (nests[H] == 1) {
                ++res;
            }

            --nests[R];
            ++nests[H];
            pigeons[P] = H;
        }
        else {
            res.writeln;
        }
    }
}
