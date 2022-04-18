import std;

void main() {
    auto S = readln.chomp;

    auto len = S.length;
    long res;

    void f(long tot = 0, long num = 0, long pos = 0) {
        if (pos >= len) {
            res += tot + num;
        }
        else {
            long d = S[pos] - '0';
            f(tot+num, d, pos+1);
            if (pos > 0) f(tot, num*10+d, pos+1);
        }
    }

    f();

    res.writeln;
}