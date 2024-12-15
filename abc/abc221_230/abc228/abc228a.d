import std;

void main() {
    int S, T, X;
    readf("%d %d %d\n", S, T, X);

    bool isOK;
    if (S < T) {
        if (S <= X && X < T) {
            isOK = true;
        }
    }
    else {
        if (S <= X || X < T) {
            isOK = true;
        }
    }

    if (isOK) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}
