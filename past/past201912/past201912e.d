import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto res = new char[][](N, N);
    foreach (i; 0 .. N)
        res[i][] = 'N';

    foreach (_; 0 .. Q) {
        auto S = readln.split.to!(long[]);
        long op = S[0], a = S[1] - 1;

        if (op == 1) {
            long b = S[2] - 1;
            res[a][b] = 'Y';
        }
        else if (op == 2) {
            foreach (i; 0 .. N) {
                if (i == a)
                    continue;
                if (res[i][a] == 'Y')
                    res[a][i] = 'Y';
            }
        }
        else {
            bool[] lists = new bool[N];
            foreach (i; 0 .. N) {
                if (i == a || res[a][i] == 'N')
                    continue;
                foreach (j; 0 .. N) {
                    if (j == a || j == i)
                        continue;
                    if (res[i][j] == 'Y')
                        lists[j] = true;
                }
            }
            foreach (i, l; lists) {
                if (l)
                    res[a][i] = 'Y';
            }
        }
    }

    writefln("%(%-(%s%)\n%)", res);
}
