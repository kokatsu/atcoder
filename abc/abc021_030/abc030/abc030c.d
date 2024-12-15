import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long X, Y;
    readf("%d %d\n", X, Y);

    auto a = readln.chomp.split.to!(long[]);
    auto b = readln.chomp.split.to!(long[]);

    auto as = a.assumeSorted;
    auto bs = b.assumeSorted;

    long cnt, pos;
    while (true) {
        if (cnt % 2 == 0) {
            auto uba = as.upperBound(pos - 1);
            if (uba.empty)
                break;
            pos = uba.front + X;
        }
        else {
            auto ubb = bs.upperBound(pos - 1);
            if (ubb.empty)
                break;
            pos = ubb.front + Y;
        }

        ++cnt;
    }

    long res = cnt / 2;
    res.writeln;
}
