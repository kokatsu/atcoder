import std;

void main() {
    long N;
    readf("%d\n", N);

    if (N % 3 == 0) {
        writeln(0);
        return;
    }

    auto cnts = new int[](3);
    long rem = N, k;
    while (rem > 0) {
        long d = rem % 10;
        ++cnts[d % 3];

        rem /= 10, ++k;
    }

    if (N % 3 == 1) {
        if (cnts[1] >= 1) {
            writeln(k > 1 ? 1 : -1);
        }
        else {
            writeln(k > 2 && cnts[2] >= 2 ? 2 : -1);
        }
    }
    else {
        if (cnts[2] >= 1) {
            writeln(k > 1 ? 1 : -1);
        }
        else {
            writeln(k > 2 && cnts[1] >= 2 ? 2 : -1);
        }
    }
}
