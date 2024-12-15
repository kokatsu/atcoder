import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long res, mx = A.front;
    A.popFront;

    foreach (a; A) {
        if (mx <= a)
            mx = a;
        else
            res += mx - a;
    }

    res.writeln;
}
