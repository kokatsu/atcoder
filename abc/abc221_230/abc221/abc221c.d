import std;

void main() {
    auto N = readln.chomp.to!(dchar[]);

    ulong len = N.length;
    long res;

    void dfs(dchar[] x, dchar[] y, ulong cnt) {
        if (cnt == len) {
            x.representation.sort;
            long u;
            foreach (i, d; x) {
                u += (d - '0') * (10 ^^ i);
            }

            y.representation.sort;
            long v;
            foreach (i, d; y) {
                v += (d - '0') * (10 ^^ i);
            }

            long m = u * v;
            if (res < m) {
                res = m;
            }
        }
        else {
            dfs(x~N[cnt], y, cnt+1);
            dfs(x, y~N[cnt], cnt+1);
        }
    }

    dfs([], [], 0);

    res.writeln;
}