import std;

bool isLeapYear(int x) {
    if (x % 400 == 0) {
        return true;
    }

    if (x % 100 == 0) {
        return false;
    }

    if (x % 4 == 0) {
        return true;
    }

    return false;
}

void main() {
    int Y;
    readf("%d\n", Y);

    int res = isLeapYear(Y) ? 366 : 365;
    res.writeln;
}
