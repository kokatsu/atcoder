import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    int S = a.sum;
    int d = S / N, r = S % N;

    int res = -1;
    if (r == 0) {
        res = 0;

        int u, v;
        foreach (x; a) {
            u += d, v += x;
            if (u != v) ++res;
        }
    }

    res.writeln;
}