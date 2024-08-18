import std;

void main() {
    auto P = new real[][](3, 6);
    foreach (i; 0 .. 3) {
        P[i] = readln.chomp.split.to!(real[]);
    }

    auto res = new real[](18);
    res[] = 0.0;
    foreach (i, p1; P[0]) {
        foreach (j, p2; P[1]) {
            foreach (k, p3; P[2]) {
                res[i+j+k+2] += p1 * p2 * p3 / 10.0 ^^ 6;
            }
        }
    }

    writefln("%(%.10f\n%)", res);
}