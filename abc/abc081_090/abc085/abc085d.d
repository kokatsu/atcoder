import std;

void main() {
    long N, H;
    readf("%d %d\n", N, H);

    auto a = new long[](N), b = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", a[i], b[i]);

    zip(a, b).sort!"a[0] > b[0]";

    long amax = a.front, bmax = b.front;
    a.popFront, b.popFront;

    if (!a.empty)
        zip(a, b).sort!"a[1] > b[1]";

    long res;
    while (H > 0) {
        if (H <= max(amax, bmax)) {
            H = 0;
        }
        else if (b.empty || amax > b.front) {
            res += (H - bmax + amax - 1) / amax + 1;
            break;
        }
        else {
            H -= b.front;
            b.popFront;
        }

        ++res;
    }

    res.writeln;
}
