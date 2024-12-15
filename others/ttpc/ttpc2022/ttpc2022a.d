import std;

enum long B = 2015;

void main() {
    long X, Y;
    readf("%d %d\n", X, Y);

    X -= B, Y -= B;

    long d = 1;
    bool[long] list1;
    while (d * d <= X) {
        if (X % d == 0)
            list1[d] = list1[X / d] = true;
        ++d;
    }

    d = 1;
    long Z = Y - X;
    bool[long] list2;
    while (d * d <= Z) {
        if (Z % d == 0) {
            if (d in list1)
                list2[d] = true;
            if (Z / d in list1)
                list2[Z / d] = true;
        }
        ++d;
    }

    auto res = list2.keys;

    res.sort;

    writefln("%(%s\n%)", res);
}
