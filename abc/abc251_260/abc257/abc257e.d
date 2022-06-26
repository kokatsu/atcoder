import std;

void main() {
    int N;
    readf("%d\n", N);

    auto C = readln.chomp.split.to!(int[]);

    auto D = iota(9).array;
    zip(C, D).sort!"a[0] == b[0] ? a[1] > b[1] : a[0] < b[0]";

    int d = N / C[0], r = N % C[0];
    auto res = to!dchar(D[0]+'1').repeat(d).array;

    int cnt = C[0], num = D[0], rem = cnt + r, pos;
    zip(C, D).sort!"a[1] > b[1]";
    while (pos < d) {
        bool isFin;
        foreach (x, y; zip(C, D)) {
            if (num >= y) {
                isFin = true;
                break;
            }
            if (rem >= x) {
                res[pos] = to!dchar(y+'1');
                rem = rem - x + cnt;
                break;
            }
        }

        ++pos;
        if (isFin) break;
    }

    res.writeln;
}