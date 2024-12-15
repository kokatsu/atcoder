import std;

void main() {
    long N;
    readf("%d\n", N);

    auto P = readln.chomp.split.to!(long[]);

    long res, mx = P.front;
    foreach (p; P) {
        if (p <= mx)
            ++res;

        mx = min(mx, p);
    }

    res.writeln;
}
