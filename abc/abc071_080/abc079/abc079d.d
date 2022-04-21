import std;

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    long L = 10;
    auto c = new long[][](L);
    foreach (i; 0 .. L) c[i] = readln.chomp.split.to!(long[]);

    foreach (i; 0 .. L) {
        foreach (j; 0 .. L) {
            foreach (k; 0 .. L) {
                long d = c[j][i] + c[i][k];
                if (c[j][k] > d) c[j][k] = d;
            }
        }
    }

    long res;
    foreach (i; 0 .. H) {
        auto A = readln.chomp.split.to!(long[]);

        foreach (a; A) {
            if (a == -1) continue;
            res += c[a][1];
        }
    }

    res.writeln;
}