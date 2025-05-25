import std;

void main() {
    int M;
    readf("%d\n", M);

    auto G = new int[][][](3, 10);
    foreach (i; 0 .. 3) {
        string S;
        readf("%s\n", S);

        foreach (j, c; S.replicate(3)) {
            G[i][c - '0'] ~= j.to!int;
        }
    }

    int res = int.max;
    foreach (i; 0 .. 10) {
        foreach (p; [0, 1, 2].permutations) {
            int index, num = -1;
            foreach (j; 0 .. 3) {
                foreach (g; G[p[j]][i]) {
                    if (g > num) {
                        ++index;
                        num = g.to!int;
                        break;
                    }
                }
            }

            if (index == 3) {
                res = min(res, num);
            }
        }
    }

    if (res == int.max) {
        res = -1;
    }

    res.writeln;
}
