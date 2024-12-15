import std;

void main() {
    int N;
    readf("%d\n", N);

    auto T = readln.chomp;

    int x, y, d;
    foreach (t; T) {
        if (t == 'S') {
            if (d == 0)
                ++x;
            else if (d == 1)
                --y;
            else if (d == 2)
                --x;
            else
                ++y;
        }
        else {
            d = (d + 1) % 4;
        }
    }

    writeln(x, " ", y);
}
