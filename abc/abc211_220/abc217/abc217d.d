import std;

void main() {
    int L, Q;
    readf("%d %d\n", L, Q);

    auto cut = new RedBlackTree!int();

    foreach (i; 0 .. Q) {
        int c, x;
        readf("%d %d\n", c, x);

        if (c == 1) {
            cut.insert(x);
        }
        else {
            int l, r = L;

            auto a = cut.lowerBound(x);
            if (!a.empty) {
                l = a.back;
            }

            auto b = cut.upperBound(x);
            if (!b.empty) {
                r = b.front;
            }

            writeln(r-l);
        }
    }
}