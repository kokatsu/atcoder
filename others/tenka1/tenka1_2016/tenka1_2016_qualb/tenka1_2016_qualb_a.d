import std;

int f(int x) {
    return (x * x + 4) / 8;
}

void main() {
    f(f(f(20))).writeln;
}
