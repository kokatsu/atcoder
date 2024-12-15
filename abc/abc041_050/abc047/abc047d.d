import std;

void main() {
    int N, T;
    readf("%d %d\n", N, T);

    auto A = readln.chomp.split.to!(int[]);

    int m = A.front;
    A.popFront;

    int res, d;
    foreach (a; A) {
        if (m > a) {
            m = a;
        }
        else {
            int t = a - m;
            if (d < t)
                res = 1, d = t;
            else if (d == t)
                ++res;
        }
    }

    res.writeln;
}
