import std;

void main() {
    long N;
    readf("%d\n", N);

    auto S1 = readln.chomp;
    auto S2 = readln.chomp;

    long M = 10 ^^ 9 + 7;

    bool isVertical;
    long res, pos;
    if (S1[0] == S2[0]) {
        isVertical = true;
        res = 3, ++pos;
    }
    else {
        res = 6, pos += 2;
    }

    while (pos < N) {
        if (S1[pos] == S2[pos]) {
            if (isVertical) res *= 2;

            isVertical = true;
            ++pos;
        }
        else {
            if (isVertical) res *= 2;
            else res *= 3;

            isVertical = false;
            pos += 2;
        }

        if (res > M) res %= M;
    }

    res.writeln;
}