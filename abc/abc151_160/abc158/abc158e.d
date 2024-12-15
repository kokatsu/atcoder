import std;

void main() {
    long N, P;
    readf("%d %d\n", N, P);

    auto S = readln.chomp;

    auto cnts = new long[](P);
    cnts[0] = 1;

    long res, num, exp = 1;
    foreach_reverse (i, s; S) {
        if (P == 2 || P == 5) {
            if ((s - '0') % P == 0)
                res += i + 1;
        }
        else {
            num = (num + (s - '0') * exp) % P;
            res += cnts[num]++;
            exp = exp * 10 % P;
        }
    }

    res.writeln;
}
