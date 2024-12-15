import std;

void main() {
    int[] P = readln.chomp.split.to!(int[]);

    foreach (p; P) {
        write(to!dchar('`' + p));
    }
}
