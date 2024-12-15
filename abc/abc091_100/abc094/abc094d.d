import std;

void main() {
    long n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(long[]);

    a.sort!"a > b";

    long p = a[0], q = long.max / 2, r = p / 2;
    a.popFront;
    foreach (x; a) {
        if (abs(x - r) < abs(q - r))
            q = x;
    }

    writeln(p, " ", q);
}
