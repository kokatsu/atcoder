import std;

void main() {
    long N, A, B;
    readf("%d %d %d\n", N, A, B);

    auto v = readln.chomp.split.to!(long[]);

    v.sort!"a > b";

    auto G = v.group.array;

    auto combTable = new long[][](N + 1, N + 1);
    combTable[0][0] = 1;
    foreach (i; 1 .. N + 1) {
        foreach (j; 0 .. i + 1) {
            combTable[i][j] += combTable[i - 1][j];
            if (j > 0)
                combTable[i][j] += combTable[i - 1][j - 1];
        }
    }

    long comb, num, cnt;
    foreach (i, g; G) {
        long nxt = cnt + g[1];

        if (nxt >= A) {
            long diff = A - cnt, mx = min(nxt, B);
            num += g[0] * diff;

            if (i == 0) {
                foreach (j; diff .. mx + 1) {
                    comb += combTable[g[1]][j];
                }
            }
            else {
                comb = combTable[g[1]][diff];
            }

            break;
        }
        else {
            num += g[0] * g[1];
        }

        cnt = nxt;
    }

    real ave = num.to!real / A;

    writefln("%.10f", ave);
    comb.writeln;
}
