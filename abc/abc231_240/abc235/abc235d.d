import std;

void main() {
    long a, N;
    readf("%d %d\n", a, N);

    long lim = 10 ^^ 7;
    auto seen = new bool[](lim);

    long res = long.max;
    void f(long num, long cnt) {
        if (num == 1) {
            res = min(res, cnt);
        }
        else {
            seen[num] = true;

            if (num % a == 0) {
                f(num/a, cnt+1);
            }

            string s = num.to!string;
            if (s.length > 1) {
                string t = s[1..$] ~ s[0];
                long nxt = t.to!long;
                if (!seen[nxt]) f(t.to!long, cnt+1);
            }
        }
    }

    f(N, 0);

    if (res == long.max) res = -1;

    res.writeln;
}