import std;

void main() {
    string S;
    readf("%s\n", S);

    auto week = ["SUN", "MON" ,"TUE" ,"WED", "THU", "FRI", "SAT"];
    foreach (i, w; week) {
        if (w == S) {
            writeln(7-i);
        }
    }
}