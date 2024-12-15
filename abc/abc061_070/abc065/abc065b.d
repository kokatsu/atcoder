import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d\n", a[i]);
    }

    a[] -= 1;

    auto buttons = new bool[](N);
    buttons[0] = true;

    int res, now = a[0];
    while (!buttons[1]) {
        if (buttons[now]) {
            res = -1;
            break;
        }

        buttons[now] = true;
        now = a[now];
        ++res;
    }

    res.writeln;
}
