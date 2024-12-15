import std;

void main() {
    int N;
    readf("%d\n", N);

    auto W = readln.chomp.split.to!(int[]);

    int S1, S2 = W.sum;

    int res = S2;
    foreach (w; W) {
        S1 += w, S2 -= w;

        res = min(res, abs(S1 - S2));
    }

    res.writeln;
}
